.class final enum Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;
.super Ljava/lang/Enum;
.source "InHouseFaultDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FaultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

.field public static final enum FINGER_COVERING:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

.field public static final enum FINGER_COVERING_FOR_WIDE:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

.field public static final enum HAND_BLUR:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    const-string v1, "FINGER_COVERING"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->FINGER_COVERING:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    const-string v1, "FINGER_COVERING_FOR_WIDE"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->FINGER_COVERING_FOR_WIDE:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    const-string v1, "HAND_BLUR"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v4, v5}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->HAND_BLUR:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    const/4 v0, 0x3

    .line 44
    new-array v0, v0, [Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->FINGER_COVERING:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->FINGER_COVERING_FOR_WIDE:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->HAND_BLUR:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->$VALUES:[Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->index:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->index:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;
    .registers 2

    .line 44
    const-class v0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;
    .registers 1

    .line 44
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->$VALUES:[Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    return-object v0
.end method
