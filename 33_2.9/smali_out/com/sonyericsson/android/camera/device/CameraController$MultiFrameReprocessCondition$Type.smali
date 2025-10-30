.class final enum Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;
.super Ljava/lang/Enum;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

.field public static final enum HDR:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

.field public static final enum LLS:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

.field public static final enum NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

.field public static final enum QUICK_CAPTURE:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

.field public static final enum WALKING:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1095
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    const-string v1, "HDR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->HDR:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    const-string v3, "LLS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->LLS:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    const-string v5, "QUICK_CAPTURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->QUICK_CAPTURE:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    new-instance v5, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    const-string v7, "NIGHT_PORTRAIT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    const-string v9, "WALKING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->WALKING:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 1094
    sput-object v9, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1094
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;
    .registers 2

    .line 1094
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;
    .registers 1

    .line 1094
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    return-object v0
.end method
