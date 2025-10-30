.class public final enum Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
.super Ljava/lang/Enum;
.source "CameraInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;


# instance fields
.field private mIsFront:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 39
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v1, "BACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v1, "FRONT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 41
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v1, "WIDE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v0, 0x3

    .line 38
    new-array v0, v0, [Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->mIsFront:Z

    return-void
.end method

.method private getIdFromCameraIdsMap()Ljava/lang/String;
    .registers 2

    .line 66
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getAvailableCameraIdsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .registers 2

    .line 38
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .registers 1

    .line 38
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object v0
.end method


# virtual methods
.method public getCameraDeviceId()Ljava/lang/String;
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getIdFromCameraIdsMap()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraDeviceIdApi1()I
    .registers 2

    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getIdFromCameraIdsMap()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFacingId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->mIsFront:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    :goto_9
    return-object v0
.end method

.method public isFront()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->mIsFront:Z

    return v0
.end method
