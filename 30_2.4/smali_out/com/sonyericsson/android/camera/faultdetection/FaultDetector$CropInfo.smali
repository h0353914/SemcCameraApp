.class public Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;
.super Ljava/lang/Object;
.source "FaultDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;
    }
.end annotation


# instance fields
.field public dest:Landroid/graphics/Bitmap;

.field public faceId:I

.field public faceRect:Landroid/graphics/Rect;

.field public rectOnSurface:Landroid/graphics/Rect;

.field public target:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->target:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

    .line 107
    iput p2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->faceId:I

    .line 108
    iput-object p4, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->faceRect:Landroid/graphics/Rect;

    .line 109
    iput-object p3, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->rectOnSurface:Landroid/graphics/Rect;

    .line 110
    iput-object p5, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->dest:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;Landroid/graphics/Bitmap;)V
    .registers 9

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 101
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;-><init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    return-void
.end method
