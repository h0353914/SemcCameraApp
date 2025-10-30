.class Lcom/sonyericsson/android/camera/qrdetection/QrDetector$2;
.super Ljava/lang/Object;
.source "QrDetector.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/qrdetection/QrDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$2;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetrieved(Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$2;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mIsStarted:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$100(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_25

    const/16 v0, 0x11

    if-ne p2, v0, :cond_25

    .line 124
    iget-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$2;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$400(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/sonyericsson/android/camera/device/ImageRetriever;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/sonyericsson/android/camera/device/ImageRetriever;->unregisterQrCodePreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)V

    .line 125
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$2;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->postDetect(IILjava/nio/ByteBuffer;)V
    invoke-static {p0, p2, p3, p1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$500(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;IILjava/nio/ByteBuffer;)V

    :cond_25
    return-void
.end method
