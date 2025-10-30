.class Lcom/sonyericsson/android/camera/qrdetection/QrDetector$ViewfinderResultPointCallback;
.super Ljava/lang/Object;
.source "QrDetector.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/qrdetection/QrDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewfinderResultPointCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetector$ViewfinderResultPointCallback-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$ViewfinderResultPointCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .registers 2

    return-void
.end method
