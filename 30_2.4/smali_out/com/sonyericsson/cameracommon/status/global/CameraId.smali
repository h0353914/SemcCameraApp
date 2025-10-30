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
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-lt p0, v1, :cond_6

    return v0

    :cond_6
    return v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    const-string v0, "camera_id"

    return-object v0
.end method

.method public minRequiredVersion()I
    .registers 2

    .line 42
    sget v0, Lcom/sonyericsson/cameracommon/status/global/CameraId;->REQUIRED_PROVIDER_VERSION:I

    return v0
.end method
