.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;
.super Ljava/lang/Enum;
.source "VideoShutterTrigger.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

.field public static final enum SMILE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

.field public static final TAG:Ljava/lang/String; = "VideoShutterTrigger"

.field private static final sParameterTextId:I = 0x7f0f0496


# instance fields
.field private final mTextId:I

.field private mVideoSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    const-string v2, "SMILE_SHUTTER"

    const/4 v3, 0x0

    const v4, 0x7f0f0434

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->SMILE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    .line 26
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    const-string v4, "OFF"

    const/4 v5, 0x1

    const v6, 0x7f0f03b6

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V

    sput-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    .line 22
    sput-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .line 44
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->mTextId:I

    return-void
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;
    .registers 2

    .line 68
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    new-array p0, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    .line 49
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    aput-object p1, p0, v0

    return-object p0

    .line 52
    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSmileDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 54
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->SMILE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_1f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_34

    .line 58
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    .line 60
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    :cond_34
    new-array p0, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    .line 63
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    aput-object p1, p0, v0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;
    .registers 2

    .line 22
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;
    .registers 1

    .line 22
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 77
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;)V

    return-void
.end method

.method public getIconId()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 1

    .line 82
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .registers 1

    const p0, 0x7f0f0496

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .registers 1

    .line 102
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 107
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoSmileCapture()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    return-object p0
.end method
