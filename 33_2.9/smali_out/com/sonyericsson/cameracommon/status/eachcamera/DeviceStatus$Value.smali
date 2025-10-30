.class public final enum Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;
.super Ljava/lang/Enum;
.source "DeviceStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

.field public static final enum PICTURE_TAKING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

.field public static final enum PICTURE_TAKING_DURING_VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

.field public static final enum POWER_OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

.field public static final enum POWER_ON:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

.field public static final enum STILL_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

.field public static final enum VIDEO_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

.field public static final enum VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;


# instance fields
.field private final mStringExpression:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 30
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    const-string v1, "POWER_ON"

    const/4 v2, 0x0

    const-string v3, "power_on"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->POWER_ON:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    .line 31
    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    const-string v3, "POWER_OFF"

    const/4 v4, 0x1

    const-string v5, "power_off"

    invoke-direct {v1, v3, v4, v5}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->POWER_OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    .line 32
    new-instance v3, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    const-string v5, "STILL_PREVIEW"

    const/4 v6, 0x2

    const-string v7, "still_preview"

    invoke-direct {v3, v5, v6, v7}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->STILL_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    .line 33
    new-instance v5, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    const-string v7, "VIDEO_PREVIEW"

    const/4 v8, 0x3

    const-string/jumbo v9, "video_preview"

    invoke-direct {v5, v7, v8, v9}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    .line 34
    new-instance v7, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    const-string v9, "PICTURE_TAKING"

    const/4 v10, 0x4

    const-string v11, "picture_taking"

    invoke-direct {v7, v9, v10, v11}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->PICTURE_TAKING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    .line 35
    new-instance v9, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    const-string v11, "VIDEO_RECORDING"

    const/4 v12, 0x5

    const-string/jumbo v13, "video_recording"

    invoke-direct {v9, v11, v12, v13}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    .line 36
    new-instance v11, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    const-string v13, "PICTURE_TAKING_DURING_VIDEO_RECORDING"

    const/4 v14, 0x6

    const-string v15, "picture_taking_during_video_recording"

    invoke-direct {v11, v13, v14, v15}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->PICTURE_TAKING_DURING_VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 29
    sput-object v13, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->$VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->mStringExpression:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;
    .registers 2

    .line 29
    const-class v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;
    .registers 1

    .line 29
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->$VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->mStringExpression:Ljava/lang/String;

    return-object p0
.end method
