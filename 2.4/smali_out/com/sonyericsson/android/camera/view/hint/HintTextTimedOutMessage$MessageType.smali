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

.field public static final enum CANNOT_BURST_DUE_TO_SHUTTER_SPEED:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_BURST_DUE_TO_TAGGING_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_BURST_DUE_TO_WIDE_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_BURST_IN_DARK_CONDITION:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_BURST_USING_FRONT_CAMERA:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_TOUCHFOCUS_DURING_MF:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum FAULT_DETECTION_PREVIEW:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum FAULT_DETECTION_SNAPSHOT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum ISO_CHANGED_BY_FUSION:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum ZOOM_NOT_AVAILABLE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum ZOOM_NOT_SUPPORTED_IN_BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum ZOOM_NOT_SUPPORTED_IN_FRONT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum ZOOM_NOT_SUPPORTED_IN_WIDE_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;


# instance fields
.field private final mIsToast:Z

.field private final mMessageResourceId:I

.field private final mPriority:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 21
    new-instance v6, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const-string v1, "CANNOT_BURST_DUE_TO_LOW_BATTERY"

    sget-object v4, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 v2, 0x0

    const v3, 0x7f0e00b7

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v6, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_LOW_BATTERY:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const-string v8, "CANNOT_BURST_IN_DARK_CONDITION"

    sget-object v11, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 v9, 0x1

    const v10, 0x7f0e00bb

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_IN_DARK_CONDITION:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const-string v2, "BURST_CHANGE_CAMERA_KEY_SETTING"

    sget-object v5, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 v3, 0x2

    const v4, 0x7f0e00b9

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->BURST_CHANGE_CAMERA_KEY_SETTING:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const-string v8, "CANNOT_BURST_USING_FRONT_CAMERA"

    sget-object v11, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 v9, 0x3

    const v10, 0x7f0e00bf

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_USING_FRONT_CAMERA:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const-string v2, "CANNOT_BURST_DUE_TO_FUSION_MODE"

    sget-object v5, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 v3, 0x4

    const v4, 0x7f0e00c0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_FUSION_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 41
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const-string v8, "BURST_IMAGES_ARE_SAVED_TO_INTERNAL_STORAGE"

    sget-object v11, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 v9, 0x5

    const v10, 0x7f0e00c1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->BURST_IMAGES_ARE_SAVED_TO_INTERNAL_STORAGE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const-string v2, "ZOOM_NOT_AVAILABLE"

    sget-object v5, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 v3, 0x6

    const v4, 0x7f0e03b2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ZOOM_NOT_AVAILABLE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 49
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const-string v8, "ZOOM_NOT_SUPPORTED_IN_FRONT"

    sget-object v11, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 v9, 0x7

    const v10, 0x7f0e03b0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ZOOM_NOT_SUPPORTED_IN_FRONT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 53
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const-string v2, "ZOOM_NOT_SUPPORTED_IN_WIDE_MODE"

    sget-object v5, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/16 v3, 0x8

    const v4, 0x7f0e03b1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ZOOM_NOT_SUPPORTED_IN_WIDE_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 57
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const-string v8, "ISO_CHANGED_BY_FUSION"

    sget-object v11, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/16 v9, 0x9

    const v10, 0x7f0e0235

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ISO_CHANGED_BY_FUSION:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 61
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const-string v2, "CANNOT_TOUCHFOCUS_DURING_MF"

    sget-object v5, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/16 v3, 0xa

    const v4, 0x7f0e02b3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_TOUCHFOCUS_DURING_MF:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 65
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const-string v8, "CANNOT_BURST_DUE_TO_SHUTTER_SPEED"

    sget-object v11, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/16 v9, 0xb

    const v10, 0x7f0e00bc

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_SHUTTER_SPEED:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 69
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const-string v2, "CANNOT_BURST_DUE_TO_BOKEH_MODE"

    sget-object v5, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/16 v3, 0xc

    const v4, 0x7f0e00ba

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 73
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const-string v8, "CANNOT_BURST_DUE_TO_WIDE_MODE"

    sget-object v11, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/16 v9, 0xd

    const v10, 0x7f0e00be

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_WIDE_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 77
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const-string v2, "CANNOT_BURST_DUE_TO_TAGGING_MODE"

    sget-object v5, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/16 v3, 0xe

    const v4, 0x7f0e00bd

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_TAGGING_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 81
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const-string v8, "ZOOM_NOT_SUPPORTED_IN_BOKEH_EFFECT"

    sget-object v11, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/16 v9, 0xf

    const v10, 0x7f0e03af

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ZOOM_NOT_SUPPORTED_IN_BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 85
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const-string v2, "FAULT_DETECTION_PREVIEW"

    sget-object v5, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->ULTRA_LOW:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/16 v3, 0x10

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->FAULT_DETECTION_PREVIEW:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 89
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const-string v8, "FAULT_DETECTION_SNAPSHOT"

    sget-object v11, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->ULTRA_LOW:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/16 v9, 0x11

    const/4 v10, -0x1

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->FAULT_DETECTION_SNAPSHOT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/16 v0, 0x12

    .line 20
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_LOW_BATTERY:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_IN_DARK_CONDITION:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->BURST_CHANGE_CAMERA_KEY_SETTING:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_USING_FRONT_CAMERA:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_FUSION_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->BURST_IMAGES_ARE_SAVED_TO_INTERNAL_STORAGE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ZOOM_NOT_AVAILABLE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ZOOM_NOT_SUPPORTED_IN_FRONT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ZOOM_NOT_SUPPORTED_IN_WIDE_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ISO_CHANGED_BY_FUSION:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_TOUCHFOCUS_DURING_MF:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_SHUTTER_SPEED:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_WIDE_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_TAGGING_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ZOOM_NOT_SUPPORTED_IN_BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->FAULT_DETECTION_PREVIEW:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->FAULT_DETECTION_SNAPSHOT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->$VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;",
            "Z)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mMessageResourceId:I

    .line 101
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mPriority:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 102
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mIsToast:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mIsToast:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mPriority:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)I
    .registers 1

    .line 20
    iget p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mMessageResourceId:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;
    .registers 2

    .line 20
    const-class v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;
    .registers 1

    .line 20
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->$VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    return-object v0
.end method
