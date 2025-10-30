.class public final enum Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;
.super Ljava/lang/Enum;
.source "FaultDetectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetectionTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

.field public static final enum PREVIEW:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

.field public static final enum SNAPSHOT:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 688
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;->PREVIEW:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    .line 689
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    const-string v1, "SNAPSHOT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;->SNAPSHOT:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    const/4 v0, 0x2

    .line 687
    new-array v0, v0, [Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;->PREVIEW:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;->SNAPSHOT:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 687
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;
    .registers 2

    .line 687
    const-class v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;
    .registers 1

    .line 687
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    return-object v0
.end method
