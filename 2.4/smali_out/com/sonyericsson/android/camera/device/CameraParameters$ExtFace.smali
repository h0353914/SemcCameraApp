.class public Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;
.super Ljava/lang/Object;
.source "CameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtFace"
.end annotation


# instance fields
.field public eyePosition:Landroid/graphics/Point;

.field public id:I

.field public isAnimalFace:Z

.field public rect:Landroid/graphics/Rect;

.field public smileScore:I

.field public trackingId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 894
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->id:I

    .line 899
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->trackingId:I

    return-void
.end method
