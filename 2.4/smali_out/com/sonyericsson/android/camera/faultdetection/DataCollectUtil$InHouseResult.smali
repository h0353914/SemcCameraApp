.class Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;
.super Ljava/lang/Object;
.source "DataCollectUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InHouseResult"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private scores:[F


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;[F)V
    .registers 3

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->bitmap:Landroid/graphics/Bitmap;

    .line 377
    iput-object p2, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->scores:[F

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;[FLcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$1;)V
    .registers 4

    .line 371
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;-><init>(Landroid/graphics/Bitmap;[F)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;)[F
    .registers 1

    .line 371
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->scores:[F

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;)Landroid/graphics/Bitmap;
    .registers 1

    .line 371
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method
