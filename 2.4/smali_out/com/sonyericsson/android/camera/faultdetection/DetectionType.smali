.class public final enum Lcom/sonyericsson/android/camera/faultdetection/DetectionType;
.super Ljava/lang/Enum;
.source "DetectionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/faultdetection/DetectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

.field public static final enum EYE_BLINK:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

.field public static final enum FINGER_COVERING:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

.field public static final enum HAND_BLUR:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

.field public static final enum OUT_OF_FOCUS_DARK:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

.field public static final enum OUT_OF_FOCUS_LOW_CONTRAST:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

.field public static final enum OUT_OF_FOCUS_NEAR:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

.field public static final enum OUT_OF_FOCUS_NONE:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;


# instance fields
.field public final priority:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 12
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    const-string v1, "EYE_BLINK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->EYE_BLINK:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    .line 13
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    const-string v1, "HAND_BLUR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->HAND_BLUR:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    .line 14
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    const-string v1, "FINGER_COVERING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->FINGER_COVERING:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    .line 15
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    const-string v1, "OUT_OF_FOCUS_NEAR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->OUT_OF_FOCUS_NEAR:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    .line 16
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    const-string v1, "OUT_OF_FOCUS_DARK"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->OUT_OF_FOCUS_DARK:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    .line 17
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    const-string v1, "OUT_OF_FOCUS_LOW_CONTRAST"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->OUT_OF_FOCUS_LOW_CONTRAST:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    .line 18
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    const-string v1, "OUT_OF_FOCUS_NONE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->OUT_OF_FOCUS_NONE:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    .line 19
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    const-string v1, "NONE"

    const/16 v10, 0x9

    invoke-direct {v0, v1, v9, v10}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->NONE:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    const/16 v0, 0x8

    .line 11
    new-array v0, v0, [Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->EYE_BLINK:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->HAND_BLUR:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->FINGER_COVERING:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->OUT_OF_FOCUS_NEAR:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->OUT_OF_FOCUS_DARK:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->OUT_OF_FOCUS_LOW_CONTRAST:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->OUT_OF_FOCUS_NONE:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->NONE:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->$VALUES:[Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->priority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/faultdetection/DetectionType;
    .registers 2

    .line 11
    const-class v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/faultdetection/DetectionType;
    .registers 1

    .line 11
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->$VALUES:[Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    return-object v0
.end method
