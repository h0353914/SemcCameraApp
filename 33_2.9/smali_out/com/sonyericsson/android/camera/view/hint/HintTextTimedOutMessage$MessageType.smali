.class public final enum Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;
.super Ljava/lang/Enum;
.source "HintTextTimedOutMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum BURST_CHANGE_CAMERA_KEY_SETTING:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum BURST_IMAGES_ARE_SAVED_TO_INTERNAL_STORAGE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_BURST_DUE_TO_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_BURST_DUE_TO_FUSION_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_BURST_DUE_TO_LOW_BATTERY:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_BURST_IN_DARK_CONDITION:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_BURST_USING_FRONT_CAMERA:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_TOUCHFOCUS_DURING_MF:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_ZOOM_UNDER_X1_4K_OR_FULL_HD:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum EV_NOT_AVAILABLE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum FLASH_FORCED_CHANGE_TO_OFF:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum ISO_CHANGED_BY_FUSION:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum NIGHT_MODE_NOT_SUPPORTED_IN_BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum NIGHT_SHOOTING_FORCED_CHANGE_TO_AUTO:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum ZOOM_NOT_AVAILABLE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum ZOOM_NOT_SUPPORTED_IN_BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum ZOOM_NOT_SUPPORTED_IN_FRONT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;


# instance fields
.field private final mIsToast:Z

.field private final mMessageResourceId:I

.field private final mMessageString:Ljava/lang/String;

.field private final mPriority:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;


# direct methods
.method static constructor <clinit>()V
    .registers 31

    .line 22
    new-instance v7, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v5, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v1, "CANNOT_BURST_DUE_TO_LOW_BATTERY"

    const/4 v2, 0x0

    const v3, 0x7f0f00c9

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v7, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_LOW_BATTERY:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v13, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v9, "CANNOT_BURST_IN_DARK_CONDITION"

    const/4 v10, 0x1

    const v11, 0x7f0f00cc

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_IN_DARK_CONDITION:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 32
    new-instance v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v20, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v16, "BURST_CHANGE_CAMERA_KEY_SETTING"

    const/16 v17, 0x2

    const v18, 0x7f0f00ca

    const/16 v19, 0x0

    const/16 v21, 0x1

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->BURST_CHANGE_CAMERA_KEY_SETTING:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 37
    new-instance v2, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v13, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v9, "CANNOT_BURST_USING_FRONT_CAMERA"

    const/4 v10, 0x3

    const v11, 0x7f0f00d0

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v2, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_USING_FRONT_CAMERA:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 42
    new-instance v3, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v20, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v16, "CANNOT_BURST_DUE_TO_FUSION_MODE"

    const/16 v17, 0x4

    const v18, 0x7f0f00d1

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v3, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_FUSION_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 47
    new-instance v4, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v13, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v9, "BURST_IMAGES_ARE_SAVED_TO_INTERNAL_STORAGE"

    const/4 v10, 0x5

    const v11, 0x7f0f00d2

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v4, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->BURST_IMAGES_ARE_SAVED_TO_INTERNAL_STORAGE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 52
    new-instance v5, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v20, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v16, "ZOOM_NOT_AVAILABLE"

    const/16 v17, 0x6

    const v18, 0x7f0f04b6

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v5, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ZOOM_NOT_AVAILABLE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 57
    new-instance v6, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v13, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v9, "ZOOM_NOT_SUPPORTED_IN_FRONT"

    const/4 v10, 0x7

    const v11, 0x7f0f04b4

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v6, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ZOOM_NOT_SUPPORTED_IN_FRONT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 62
    new-instance v8, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v20, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v16, "ISO_CHANGED_BY_FUSION"

    const/16 v17, 0x8

    const v18, 0x7f0f02ab

    move-object v15, v8

    invoke-direct/range {v15 .. v21}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v8, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ISO_CHANGED_BY_FUSION:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 67
    new-instance v16, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v14, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v10, "CANNOT_TOUCHFOCUS_DURING_MF"

    const/16 v11, 0x9

    const v12, 0x7f0f034d

    const/4 v13, 0x0

    const/4 v15, 0x1

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v16, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_TOUCHFOCUS_DURING_MF:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 72
    new-instance v9, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v22, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v18, "CANNOT_BURST_DUE_TO_BOKEH_MODE"

    const/16 v19, 0xa

    const v20, 0x7f0f00cb

    const/16 v21, 0x0

    const/16 v23, 0x1

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v23}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v9, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 77
    new-instance v10, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v29, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v25, "ZOOM_NOT_SUPPORTED_IN_BOKEH_EFFECT"

    const/16 v26, 0xb

    const v27, 0x7f0f04b3

    const/16 v28, 0x0

    const/16 v30, 0x1

    move-object/from16 v24, v10

    invoke-direct/range {v24 .. v30}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v10, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ZOOM_NOT_SUPPORTED_IN_BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 82
    new-instance v11, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v22, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v18, "NIGHT_MODE_NOT_SUPPORTED_IN_BOKEH_EFFECT"

    const/16 v19, 0xc

    const v20, 0x7f0f00c2

    move-object/from16 v17, v11

    invoke-direct/range {v17 .. v23}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v11, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->NIGHT_MODE_NOT_SUPPORTED_IN_BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 87
    new-instance v12, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v29, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v25, "CANNOT_ZOOM_UNDER_X1_4K_OR_FULL_HD"

    const/16 v26, 0xd

    const v27, 0x7f0f02e8

    move-object/from16 v24, v12

    invoke-direct/range {v24 .. v30}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v12, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_ZOOM_UNDER_X1_4K_OR_FULL_HD:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 92
    new-instance v13, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v22, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v18, "EV_NOT_AVAILABLE"

    const/16 v19, 0xe

    const v20, 0x7f0f018a

    move-object/from16 v17, v13

    invoke-direct/range {v17 .. v23}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v13, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->EV_NOT_AVAILABLE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 97
    new-instance v14, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v29, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v25, "NIGHT_SHOOTING_FORCED_CHANGE_TO_AUTO"

    const/16 v26, 0xf

    const v27, 0x7f0f0239

    move-object/from16 v24, v14

    invoke-direct/range {v24 .. v30}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v14, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->NIGHT_SHOOTING_FORCED_CHANGE_TO_AUTO:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 102
    new-instance v15, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v22, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v18, "FLASH_FORCED_CHANGE_TO_OFF"

    const/16 v19, 0x10

    const v20, 0x7f0f0238

    move-object/from16 v17, v15

    invoke-direct/range {v17 .. v23}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v15, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->FLASH_FORCED_CHANGE_TO_OFF:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/16 v15, 0x11

    new-array v15, v15, [Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/16 v18, 0x0

    aput-object v7, v15, v18

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

    aput-object v17, v15, v0

    .line 21
    sput-object v15, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->$VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;",
            "Z)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput p3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mMessageResourceId:I

    .line 117
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mMessageString:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mPriority:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 119
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mIsToast:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Z
    .registers 1

    .line 21
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mIsToast:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mPriority:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)I
    .registers 1

    .line 21
    iget p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mMessageResourceId:I

    return p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mMessageString:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;
    .registers 2

    .line 21
    const-class v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;
    .registers 1

    .line 21
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->$VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    return-object v0
.end method
