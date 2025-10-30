.class public final enum Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;
.super Ljava/lang/Enum;
.source "SideTouchEventDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/SideTouchEventDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SideTouchArea"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

.field public static final enum BOTTOM:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

.field public static final enum LEFT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

.field public static final enum RIGHT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

.field public static final enum TOP:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

.field public static final enum UNKNOWN:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->UNKNOWN:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    .line 38
    new-instance v1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    const-string v3, "TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->TOP:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    .line 39
    new-instance v3, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    const-string v5, "BOTTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->BOTTOM:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    .line 40
    new-instance v5, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    const-string v7, "LEFT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->LEFT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    .line 41
    new-instance v7, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    const-string v9, "RIGHT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->RIGHT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 36
    sput-object v9, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->$VALUES:[Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Landroid/view/MotionEvent;I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;
    .registers 2

    .line 36
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->fromMotionEvent(Landroid/view/MotionEvent;I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;
    .registers 1

    .line 36
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->fromCode(I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    move-result-object p0

    return-object p0
.end method

.method private static fromCode(I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    const/16 v0, 0x8

    if-eq p0, v0, :cond_10

    .line 67
    sget-object p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->UNKNOWN:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-object p0

    .line 61
    :cond_10
    sget-object p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->BOTTOM:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-object p0

    .line 59
    :cond_13
    sget-object p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->TOP:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-object p0

    .line 65
    :cond_16
    sget-object p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->RIGHT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-object p0

    .line 63
    :cond_19
    sget-object p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->LEFT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-object p0
.end method

.method private static fromMotionEvent(Landroid/view/MotionEvent;I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;
    .registers 2

    .line 49
    invoke-static {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchUtils;->getLogicalScreenSide(Landroid/view/MotionEvent;I)I

    move-result p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->fromCode(I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;
    .registers 2

    .line 36
    const-class v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;
    .registers 1

    .line 36
    sget-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->$VALUES:[Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-object v0
.end method
