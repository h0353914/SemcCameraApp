.class Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;
.super Ljava/lang/Object;
.source "DataCollectUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FaceResult"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private fileName:Ljava/lang/String;

.field private leftEyeConfidenceValue:F

.field private leftEyeScore:F

.field private rightEyeConfidenceValue:F

.field private rightEyeScore:F


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;FFFF)V
    .registers 7

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->fileName:Ljava/lang/String;

    .line 363
    iput-object p2, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->bitmap:Landroid/graphics/Bitmap;

    .line 364
    iput p3, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->leftEyeScore:F

    .line 365
    iput p4, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->rightEyeScore:F

    .line 366
    iput p5, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->leftEyeConfidenceValue:F

    .line 367
    iput p6, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->rightEyeConfidenceValue:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;FFFFLcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$1;)V
    .registers 8

    .line 351
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;FFFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;)Ljava/lang/String;
    .registers 1

    .line 351
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;)Landroid/graphics/Bitmap;
    .registers 1

    .line 351
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;)F
    .registers 1

    .line 351
    iget p0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->rightEyeConfidenceValue:F

    return p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;)F
    .registers 1

    .line 351
    iget p0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->leftEyeConfidenceValue:F

    return p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;)F
    .registers 1

    .line 351
    iget p0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->rightEyeScore:F

    return p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;)F
    .registers 1

    .line 351
    iget p0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->leftEyeScore:F

    return p0
.end method
