.class public final enum Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;
.super Ljava/lang/Enum;
.source "FaultDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Target"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

.field public static final enum FACES:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

.field public static final enum PREVIEW:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 117
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;->PREVIEW:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

    .line 118
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

    const-string v1, "FACES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;->FACES:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

    const/4 v0, 0x2

    .line 116
    new-array v0, v0, [Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;->PREVIEW:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;->FACES:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;->$VALUES:[Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;
    .registers 2

    .line 116
    const-class v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;
    .registers 1

    .line 116
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;->$VALUES:[Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

    return-object v0
.end method
