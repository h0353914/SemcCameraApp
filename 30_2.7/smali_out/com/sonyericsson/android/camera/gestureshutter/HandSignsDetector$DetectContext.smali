.class Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;
.super Ljava/lang/Object;
.source "HandSignsDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetectContext"
.end annotation


# instance fields
.field private mDetectHeight:I

.field private mDetectWidth:I

.field private mFrame:[B

.field private mIsInitialized:Z

.field private mShrinkRatio:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;)V
    .registers 2

    .line 102
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;-><init>()V

    return-void
.end method


# virtual methods
.method getDetectHeight()I
    .registers 2

    .line 152
    iget v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->mDetectHeight:I

    return v0
.end method

.method getDetectWidth()I
    .registers 2

    .line 148
    iget v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->mDetectWidth:I

    return v0
.end method

.method getFrame()[B
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->mFrame:[B

    return-object v0
.end method

.method getShrinkRatio()Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->mShrinkRatio:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    return-object v0
.end method

.method initialize(II)V
    .registers 6

    const/4 v0, 0x0

    :cond_1
    const/16 v1, 0x280

    const/4 v2, 0x1

    if-gt p1, v1, :cond_a

    const/16 v1, 0x1e0

    if-le p2, v1, :cond_18

    .line 116
    :cond_a
    div-int/lit8 p1, p1, 0x2

    .line 117
    div-int/lit8 p2, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 119
    invoke-static {}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;->values()[Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 124
    :cond_18
    iget v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->mDetectWidth:I

    if-ne v1, p1, :cond_20

    iget v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->mDetectHeight:I

    if-eq v1, p2, :cond_27

    .line 125
    :cond_20
    iput p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->mDetectWidth:I

    .line 126
    iput p2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->mDetectHeight:I

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->mFrame:[B

    .line 130
    :cond_27
    iget-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->mFrame:[B

    if-nez p1, :cond_39

    .line 131
    iget p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->mDetectWidth:I

    iget p2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->mDetectHeight:I

    mul-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x3fc00000    # 1.5f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->mFrame:[B

    .line 135
    :cond_39
    invoke-static {}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;->values()[Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    move-result-object p1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->mShrinkRatio:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    .line 136
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->mIsInitialized:Z

    return-void
.end method

.method isInitialized()Z
    .registers 2

    .line 140
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->mIsInitialized:Z

    return v0
.end method

.method reset()V
    .registers 2

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->mShrinkRatio:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->mIsInitialized:Z

    return-void
.end method
