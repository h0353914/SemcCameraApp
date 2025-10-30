.class public final enum Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;
.super Ljava/lang/Enum;
.source "CameraActionSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraActionSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

.field public static final enum SHUTTER_CLICK:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

.field public static final enum SHUTTER_CLICK_FIRST_HALF:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

.field public static final enum SHUTTER_CLICK_SECOND_HALF:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

.field public static final enum START_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

.field public static final enum STOP_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;


# instance fields
.field private final SOUND_DIRS:[Ljava/lang/String;

.field private final resourceId:I

.field private final soundName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 290
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    const-string v1, "SHUTTER_CLICK"

    const/4 v2, 0x0

    const-string v3, "camera_click.ogg"

    const v4, 0x7f0e0002

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    .line 295
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    const-string v3, "START_VIDEO_RECORDING"

    const/4 v4, 0x1

    const-string v5, "VideoRecord.ogg"

    const v6, 0x7f0e001f

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->START_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    .line 301
    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    const-string v5, "STOP_VIDEO_RECORDING"

    const/4 v7, 0x2

    const-string v8, "VideoStop.ogg"

    invoke-direct {v3, v5, v7, v8, v6}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->STOP_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    .line 307
    new-instance v5, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    const-string v6, "SHUTTER_CLICK_FIRST_HALF"

    const/4 v8, 0x3

    const-string v9, "camera_click_first_half.ogg"

    const v10, 0x7f0e0003

    invoke-direct {v5, v6, v8, v9, v10}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK_FIRST_HALF:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    .line 313
    new-instance v6, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    const-string v9, "SHUTTER_CLICK_SECOND_HALF"

    const/4 v10, 0x4

    const-string v11, "camera_click_second_half.ogg"

    const v12, 0x7f0e0004

    invoke-direct {v6, v9, v10, v11, v12}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK_SECOND_HALF:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v7

    aput-object v5, v9, v8

    aput-object v6, v9, v10

    .line 286
    sput-object v9, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 323
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, "/product/media/audio/ui/"

    const-string p2, "/system/media/audio/ui/"

    .line 315
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SOUND_DIRS:[Ljava/lang/String;

    .line 324
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->soundName:Ljava/lang/String;

    .line 325
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->resourceId:I

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)Ljava/lang/String;
    .registers 1

    .line 286
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->getSoundFile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)I
    .registers 1

    .line 286
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->resourceId:I

    return p0
.end method

.method private getSoundFile()Ljava/lang/String;
    .registers 5

    .line 329
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SOUND_DIRS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->soundName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SOUND_DIRS:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->soundName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 331
    :cond_3b
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SOUND_DIRS:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->soundName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SOUND_DIRS:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->soundName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_76
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;
    .registers 2

    .line 286
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;
    .registers 1

    .line 286
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    return-object v0
.end method
