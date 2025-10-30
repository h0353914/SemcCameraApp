.class final enum Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;
.super Ljava/lang/Enum;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RepeatingRequestState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

.field public static final enum PREVIEW:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

.field public static final enum RECORDING:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

.field public static final enum REQUEST_RECORDING:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 2001
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->NONE:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    .line 2002
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    const-string v1, "PREVIEW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->PREVIEW:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    .line 2003
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    const-string v1, "REQUEST_RECORDING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->REQUEST_RECORDING:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    .line 2004
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    const-string v1, "RECORDING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->RECORDING:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    const/4 v0, 0x4

    .line 2000
    new-array v0, v0, [Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->NONE:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->PREVIEW:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->REQUEST_RECORDING:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->RECORDING:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2000
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;
    .registers 2

    .line 2000
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;
    .registers 1

    .line 2000
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    return-object v0
.end method
