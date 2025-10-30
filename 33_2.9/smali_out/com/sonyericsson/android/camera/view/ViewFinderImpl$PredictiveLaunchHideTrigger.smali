.class public final enum Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;
.super Ljava/lang/Enum;
.source "ViewFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PredictiveLaunchHideTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

.field public static final enum HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

.field public static final enum OTHER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

.field public static final enum SIDE_SENSING:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

.field public static final enum TOUCH_UP:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

.field public static final enum TOUCH_UP_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

.field public static final enum VOLUME_KEY_SHUTTER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

.field public static final enum VOLUME_KEY_ZOOM:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;


# instance fields
.field public final mAction:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 778
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->TOUCH_UP:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v2, "TOUCH_UP"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->TOUCH_UP:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 779
    new-instance v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->TOUCH_UP:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v4, "TOUCH_UP_CAPTURE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->TOUCH_UP_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 780
    new-instance v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->HW_CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v6, "HW_CAMERA_KEY"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 781
    new-instance v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    sget-object v6, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v8, "VOLUME_KEY_SHUTTER"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_SHUTTER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 782
    new-instance v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    sget-object v8, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v10, "VOLUME_KEY_ZOOM"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_ZOOM:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 783
    new-instance v8, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    sget-object v10, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->SIDE_SENSING:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v12, "SIDE_SENSING"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v8, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->SIDE_SENSING:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 784
    new-instance v10, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    sget-object v12, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v14, "OTHER"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v10, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->OTHER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    const/4 v12, 0x7

    new-array v12, v12, [Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    aput-object v0, v12, v3

    aput-object v1, v12, v5

    aput-object v2, v12, v7

    aput-object v4, v12, v9

    aput-object v6, v12, v11

    aput-object v8, v12, v13

    aput-object v10, v12, v15

    .line 777
    sput-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;",
            ")V"
        }
    .end annotation

    .line 788
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 789
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->mAction:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;
    .registers 2

    .line 777
    const-class v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;
    .registers 1

    .line 777
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    return-object v0
.end method
