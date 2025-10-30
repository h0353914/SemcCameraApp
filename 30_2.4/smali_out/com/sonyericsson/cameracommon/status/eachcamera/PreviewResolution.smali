.class public Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;
.super Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;
.source "PreviewResolution.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# static fields
.field public static final DEFAULT_VALUE:Landroid/graphics/Rect;

.field public static final KEY:Ljava/lang/String; = "preview_resolution"

.field private static REQUIRED_PROVIDER_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 29
    sput v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;->REQUIRED_PROVIDER_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;-><init>(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    const-string v0, "preview_resolution"

    return-object v0
.end method

.method public minRequiredVersion()I
    .registers 2

    .line 45
    sget v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;->REQUIRED_PROVIDER_VERSION:I

    return v0
.end method
