.class Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreviewFrameRequest"
.end annotation


# instance fields
.field protected final callback:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;

.field protected final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;Landroid/os/Handler;)V
    .registers 3

    .line 2864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2865
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;->callback:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;

    .line 2866
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;->handler:Landroid/os/Handler;

    return-void
.end method
