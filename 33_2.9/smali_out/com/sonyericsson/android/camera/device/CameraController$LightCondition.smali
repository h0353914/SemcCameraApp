.class final enum Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;
.super Ljava/lang/Enum;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LightCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

.field public static final enum LOW_LIGHT:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

.field private static final MAX_LOW_LIGHT_ISO:I = 0x63f

.field private static final MAX_LOW_LIGHT_ISO_ODM:I = 0x780

.field private static final MAX_LOW_LIGHT_ISO_ODM_FRONT:I = 0x500

.field private static final MAX_NORMAL_LIGHT_ISO:I = 0x280

.field private static final MAX_NORMAL_LIGHT_ISO_ODM:I = 0x280

.field private static final MAX_NORMAL_LIGHT_ISO_ODM_FRONT:I = 0x1e0

.field private static final MAX_QUICK_LAUNCH_LOW_LIGHT_ISO:I = 0x190

.field public static final enum NORMAL:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

.field public static final enum QUICK_LAUNCH_LOW_LIGHT:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

.field public static final enum SUPER_LOW_LIGHT:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1545
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;->NORMAL:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    .line 1546
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    const-string v3, "LOW_LIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;->LOW_LIGHT:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    .line 1547
    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    const-string v5, "SUPER_LOW_LIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;->SUPER_LOW_LIGHT:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    .line 1548
    new-instance v5, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    const-string v7, "QUICK_LAUNCH_LOW_LIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;->QUICK_LAUNCH_LOW_LIGHT:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 1544
    sput-object v7, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1544
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static get(IZ)Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;
    .registers 2

    if-eqz p1, :cond_13

    const/16 p1, 0x1e0

    if-gt p0, p1, :cond_9

    .line 1561
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;->NORMAL:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    return-object p0

    :cond_9
    const/16 p1, 0x500

    if-gt p0, p1, :cond_10

    .line 1563
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;->LOW_LIGHT:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    return-object p0

    .line 1565
    :cond_10
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;->SUPER_LOW_LIGHT:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    return-object p0

    :cond_13
    const/16 p1, 0x190

    if-le p0, p1, :cond_1e

    .line 1568
    sget-boolean p1, Lcom/sonyericsson/android/camera/device/CameraController;->isPreProcessRequiredFrom:Z

    if-eqz p1, :cond_1e

    .line 1569
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;->QUICK_LAUNCH_LOW_LIGHT:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    return-object p0

    :cond_1e
    const/16 p1, 0x280

    if-gt p0, p1, :cond_25

    .line 1572
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;->NORMAL:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    return-object p0

    :cond_25
    const/16 p1, 0x780

    if-gt p0, p1, :cond_2c

    .line 1574
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;->LOW_LIGHT:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    return-object p0

    .line 1576
    :cond_2c
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;->SUPER_LOW_LIGHT:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;
    .registers 2

    .line 1544
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;
    .registers 1

    .line 1544
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    return-object v0
.end method
