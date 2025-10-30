.class public final enum Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;
.super Ljava/lang/Enum;
.source "BaseLayoutPattern.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;",
        ">;",
        "Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum BURST_SHOOTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum CLEAR:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum CLEAR_IN_SIDE_TOUCH:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum FOCUS_SEARCHING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum MODE_CHANGING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum PREVIEW:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum PREVIEW_NO_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum SELFTIMER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum SETTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum VIDEO_FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum ZOOMING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum ZOOMING_IN_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 28
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v3, "PREVIEW_NO_RECORDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW_NO_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 33
    new-instance v3, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v5, "MODE_CHANGING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->MODE_CHANGING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 38
    new-instance v5, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v7, "CLEAR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 42
    new-instance v7, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v9, "ZOOMING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 43
    new-instance v9, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v11, "ZOOMING_IN_RECORDING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 44
    new-instance v11, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v13, "ZOOMING_IN_PAUSE_RECORDING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 49
    new-instance v13, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v15, "FOCUS_SEARCHING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 53
    new-instance v15, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v14, "FOCUS_DONE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 57
    new-instance v14, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v12, "CAPTURE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 63
    new-instance v12, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v10, "BURST_SHOOTING"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 67
    new-instance v10, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v8, "RECORDING"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 71
    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v6, "SETTING"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SETTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 75
    new-instance v6, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v4, "SELFTIMER"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SELFTIMER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 79
    new-instance v4, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v2, "PAUSE_RECORDING"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 83
    new-instance v2, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v6, "OVERLAY_CONTROL_SEEKING"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 87
    new-instance v6, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v4, "HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 91
    new-instance v4, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v2, "CLEAR_IN_SIDE_TOUCH"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR_IN_SIDE_TOUCH:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 95
    new-instance v2, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v6, "VIDEO_FOCUS_DONE"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->VIDEO_FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const/16 v6, 0x13

    new-array v6, v6, [Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    aput-object v2, v6, v4

    .line 18
    sput-object v6, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;
    .registers 2

    .line 18
    const-class v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;
    .registers 1

    .line 18
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    return-object v0
.end method
