.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;
.super Ljava/lang/Enum;
.source "ShutterTrigger.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

.field public static final enum GESTURE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

.field public static final enum SMILE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

.field public static final TAG:Ljava/lang/String; = "ShutterTrigger"

.field private static final sParameterTextId:I = 0x7f0f0408


# instance fields
.field private mGestureShutter:Z

.field private mSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 24
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const-string v1, "SMILE_SHUTTER"

    const/4 v2, 0x0

    const v3, 0x7f0f0434

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;Z)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->SMILE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const-string v8, "GESTURE_SHUTTER"

    const/4 v9, 0x1

    const v10, 0x7f0f024c

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->GESTURE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    .line 32
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    sget-object v17, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const-string v14, "OFF"

    const/4 v15, 0x2

    const v16, 0x7f0f03b6

    const/16 v18, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;Z)V

    sput-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 23
    sput-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;",
            "Z)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->mSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 53
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->mTextId:I

    .line 54
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->mGestureShutter:Z

    return-void
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;
    .registers 2

    .line 80
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_11

    .line 81
    :cond_8
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->isGestureShutterSupported()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 82
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->GESTURE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    return-object p0

    .line 84
    :cond_11
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;
    .registers 3

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSmileDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 61
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->SMILE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_14
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v1, :cond_1c

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v1, :cond_27

    .line 65
    :cond_1c
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->isGestureShutterSupported()Z

    move-result p0

    if-eqz p0, :cond_27

    .line 66
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->GESTURE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_3c

    .line 70
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    .line 72
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    :cond_3c
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;
    .registers 2

    .line 23
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;
    .registers 1

    .line 23
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 98
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;)V

    return-void
.end method

.method public getIconId()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 1

    .line 103
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .registers 1

    const p0, 0x7f0f0408

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSmileCapture()Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->mSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    return-object p0
.end method

.method public getTextId()I
    .registers 1

    .line 123
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isGestureShutterOn()Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->mGestureShutter:Z

    return p0
.end method
