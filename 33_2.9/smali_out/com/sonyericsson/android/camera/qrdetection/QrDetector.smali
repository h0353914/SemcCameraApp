.class public Lcom/sonyericsson/android/camera/qrdetection/QrDetector;
.super Ljava/lang/Object;
.source "QrDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;,
        Lcom/sonyericsson/android/camera/qrdetection/QrDetector$ViewfinderResultPointCallback;
    }
.end annotation


# static fields
.field private static final GET_FRAME_INTERVAL_MILLIS:I = 0x1f4


# instance fields
.field private final mBytesLock:Ljava/lang/Object;

.field private mDetectRunnable:Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;

.field private final mGetFrameTask:Ljava/lang/Runnable;

.field private mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

.field private mImageHeight:I

.field private mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

.field private mImageWidth:I

.field private mIsStarted:Z

.field private mListener:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;

.field private final mResultScheduler:Landroid/os/Handler;

.field private mScanResult:Lcom/google/zxing/Result;

.field private mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

.field private mYuvBytes:[B


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;Landroid/os/Handler;)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mIsStarted:Z

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mScanResult:Lcom/google/zxing/Result;

    .line 51
    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mListener:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mBytesLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$1;-><init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mGetFrameTask:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$2;-><init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mListener:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;

    .line 71
    iput-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mResultScheduler:Landroid/os/Handler;

    .line 72
    new-instance p1, Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    const-string p2, "QrDetector"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    return-void
.end method

.method private Detect([B)Lcom/google/zxing/Result;
    .registers 18

    move-object/from16 v0, p0

    .line 76
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 77
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 78
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v3, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    new-instance v3, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$ViewfinderResultPointCallback;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$ViewfinderResultPointCallback;-><init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetector$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v2, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v2}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 83
    invoke-virtual {v2, v1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 84
    new-instance v1, Landroid/graphics/Rect;

    iget v3, v0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageWidth:I

    iget v5, v0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageHeight:I

    const/4 v6, 0x0

    invoke-direct {v1, v6, v6, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 86
    new-instance v3, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;

    iget v9, v0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageWidth:I

    iget v10, v0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageHeight:I

    iget v11, v1, Landroid/graphics/Rect;->left:I

    iget v12, v1, Landroid/graphics/Rect;->top:I

    .line 87
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v14

    const/4 v15, 0x0

    move-object v7, v3

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v15}, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    .line 89
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v1, v3}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 91
    :try_start_56
    invoke-virtual {v2, v0}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v4
    :try_end_5a
    .catch Lcom/google/zxing/ReaderException; {:try_start_56 .. :try_end_5a} :catch_60
    .catchall {:try_start_56 .. :try_end_5a} :catchall_64

    if-eqz v4, :cond_60

    .line 98
    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    return-object v4

    :catch_60
    :cond_60
    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_6a

    :catchall_64
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 99
    throw v1

    :goto_6a
    return-object v4
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Z
    .registers 1

    .line 39
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mIsStarted:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mListener:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Landroid/os/Handler;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mResultScheduler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->postGetFrame()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/sonyericsson/android/camera/util/BackgroundWorker;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/sonyericsson/android/camera/device/ImageRetriever;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;IILjava/nio/ByteBuffer;)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->postDetect(IILjava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Ljava/lang/Object;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mBytesLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)[B
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mYuvBytes:[B

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/google/zxing/Result;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mScanResult:Lcom/google/zxing/Result;

    return-object p0
.end method

.method static synthetic access$802(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;Lcom/google/zxing/Result;)Lcom/google/zxing/Result;
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mScanResult:Lcom/google/zxing/Result;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;[B)Lcom/google/zxing/Result;
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->Detect([B)Lcom/google/zxing/Result;

    move-result-object p0

    return-object p0
.end method

.method private postDetect(IILjava/nio/ByteBuffer;)V
    .registers 7

    .line 168
    iget v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageWidth:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageHeight:I

    if-eq v0, p2, :cond_1d

    .line 169
    :cond_8
    iput p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageWidth:I

    .line 170
    iput p2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageHeight:I

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mBytesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_f
    iget v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageWidth:I

    iget v2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageHeight:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mYuvBytes:[B

    .line 173
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_30

    .line 175
    :cond_1d
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;-><init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;IILjava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mDetectRunnable:Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;

    .line 176
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mDetectRunnable:Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_30
    move-exception p0

    .line 173
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0
.end method

.method private postGetFrame()V
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mScanResult:Lcom/google/zxing/Result;

    if-nez v0, :cond_11

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mGetFrameTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method


# virtual methods
.method public isStarted()Z
    .registers 1

    .line 151
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mIsStarted:Z

    return p0
.end method

.method public release()V
    .registers 1

    .line 156
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->quit()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public startDetect(Lcom/sonyericsson/android/camera/device/ImageRetriever;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    const/4 p1, 0x1

    .line 132
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mIsStarted:Z

    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mScanResult:Lcom/google/zxing/Result;

    .line 134
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->postGetFrame()V

    return-void
.end method

.method public stopDetect()V
    .registers 4

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mDetectRunnable:Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mDetectRunnable:Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    iput-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mDetectRunnable:Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;

    .line 143
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mGetFrameTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/device/ImageRetriever;->unregisterQrCodePreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)V

    .line 145
    iput-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mIsStarted:Z

    .line 147
    iput-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mScanResult:Lcom/google/zxing/Result;

    return-void
.end method
