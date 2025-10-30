.class public Lcom/sonyericsson/cameracommon/status/global/CameraId;
.super Lcom/sonyericsson/cameracommon/status/IntegerValue;
.source "CameraId.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusValue;


# static fields
.field public static final DEFAULT_VALUE:I = 0x0

.field public static final KEY:Ljava/lang/String; = "camera_id"

.field private static REQUIRED_PROVIDER_VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/IntegerValue;-><init>(I)V

    return-void
.end method

.method public static defaultValue(I)I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 1

    const-string p0, "camera_id"

    return-object p0
.end method

.method public minRequiredVersion()I
    .registers 1

    .line 42
    sget p0, Lcom/sonyericsson/cameracommon/status/global/CameraId;->REQUIRED_PROVIDER_VERSION:I

    return p0
.end method
