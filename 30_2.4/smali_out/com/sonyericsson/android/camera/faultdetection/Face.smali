.class Lcom/sonyericsson/android/camera/faultdetection/Face;
.super Ljava/lang/Object;
.source "Face.java"


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field id:I

.field rect:Landroid/graphics/Rect;

.field rotation:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/sonyericsson/android/camera/faultdetection/Face;->id:I

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/Face;->rect:Landroid/graphics/Rect;

    .line 22
    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/Face;->bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/sonyericsson/android/camera/faultdetection/Face;->rotation:I

    return-void
.end method
