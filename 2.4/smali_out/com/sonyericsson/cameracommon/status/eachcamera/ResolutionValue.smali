.class public abstract Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;
.super Ljava/lang/Object;
.source "ResolutionValue.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/CameraStatusValue;
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# static fields
.field private static REQUIRED_PROVIDER_VERSION:I = 0x1


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->mWidth:I

    .line 38
    iput p2, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->mHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->mWidth:I

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->mHeight:I

    return-void
.end method


# virtual methods
.method public getValueForDebug()Ljava/lang/String;
    .registers 2

    .line 66
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public minRequiredVersion()I
    .registers 2

    .line 79
    sget v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->REQUIRED_PROVIDER_VERSION:I

    return v0
.end method

.method public putInto(Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
