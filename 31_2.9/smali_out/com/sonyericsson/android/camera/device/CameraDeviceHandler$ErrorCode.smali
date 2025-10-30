.class public final enum Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;
.super Ljava/lang/Enum;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

.field public static final enum ERROR_ON_CAMERA_DISCONNECTION:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

.field public static final enum ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

.field public static final enum ERROR_ON_CAPTURE_FAILED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

.field public static final enum ERROR_ON_CONFIGURE_FAILED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

.field public static final enum ERROR_ON_CREATE_PERSIST_SURFACE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 4855
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    const-string v1, "ERROR_ON_CAMERA_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 4856
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    const-string v1, "ERROR_ON_CAMERA_DISCONNECTION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_DISCONNECTION:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 4857
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    const-string v1, "ERROR_ON_CAPTURE_FAILED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAPTURE_FAILED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 4858
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    const-string v1, "ERROR_ON_CONFIGURE_FAILED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CONFIGURE_FAILED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 4859
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    const-string v1, "ERROR_ON_CREATE_PERSIST_SURFACE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CREATE_PERSIST_SURFACE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    const/4 v0, 0x5

    .line 4854
    new-array v0, v0, [Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_DISCONNECTION:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAPTURE_FAILED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CONFIGURE_FAILED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CREATE_PERSIST_SURFACE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4854
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;
    .registers 2

    .line 4854
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;
    .registers 1

    .line 4854
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    return-object v0
.end method
