.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;
.super Ljava/lang/Enum;
.source "VideoSmileCapture.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

.field public static final enum HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

.field public static final enum LOW:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

.field public static final enum MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

.field public static final TAG:Ljava/lang/String; = "VideoSmileCapture"

.field private static final sParameterTextId:I = 0x7f0f03f8


# instance fields
.field private final mNotificationIconId:I

.field private final mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    const-string v1, "HIGH"

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const/4 v3, 0x0

    const v4, 0x7f0802f4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    const-string v1, "MIDDLE"

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const/4 v4, 0x1

    const v5, 0x7f0802f6

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    const-string v1, "LOW"

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->LOW:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const/4 v5, 0x2

    const v6, 0x7f0802f5

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->LOW:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    const-string v1, "OFF"

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const/4 v6, 0x3

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    const/4 v0, 0x4

    .line 20
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->LOW:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;",
            "I)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 61
    iget-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->isSmileCaptureOn()Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "on"

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mValue:Ljava/lang/String;

    goto :goto_16

    :cond_12
    const-string p1, "off"

    .line 64
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mValue:Ljava/lang/String;

    .line 66
    :goto_16
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mNotificationIconId:I

    return-void
.end method

.method public static getOptions(ZLcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    .line 136
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    aput-object p1, p0, v0

    return-object p0

    .line 138
    :cond_b
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->SMILE_DETECTION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 139
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    move-result-object p0

    return-object p0

    .line 141
    :cond_26
    new-array p0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;
    .registers 2

    .line 20
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;
    .registers 1

    .line 20
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    return-void
.end method

.method public getDimenId()I
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getDimenId()I

    move-result v0

    return v0
.end method

.method public getIconId()I
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getIconId()I

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 86
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const v0, 0x7f0f03f8

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationIconId()I
    .registers 2

    .line 116
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mNotificationIconId:I

    return v0
.end method

.method public getTextId()I
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getTextId()I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isSmileCaptureOn()Z
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->isSmileCaptureOn()Z

    move-result v0

    return v0
.end method
