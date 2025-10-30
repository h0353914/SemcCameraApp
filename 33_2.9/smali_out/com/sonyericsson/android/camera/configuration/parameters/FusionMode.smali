.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;
.super Ljava/lang/Enum;
.source "FusionMode.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

.field private static final TAG:Ljava/lang/String; = "FusionMode"


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 20
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    const-string v1, "OFF"

    const/4 v2, 0x0

    const v3, 0x7f0801b5

    const v4, 0x7f0f03b6

    const-string v5, "off"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    const-string v8, "ON"

    const/4 v9, 0x1

    const v10, 0x7f0801b0

    const v11, 0x7f0f03b7

    const-string v12, "on"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    .line 28
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    const-string v14, "AUTO"

    const/4 v15, 0x2

    const v16, 0x7f0801b0

    const v17, 0x7f0f03b5

    const-string v18, "auto"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 19
    sput-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->mIconId:I

    .line 55
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->mTextId:I

    .line 56
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;
    .registers 3

    .line 137
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 138
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    .line 140
    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_MODE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 142
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_26

    goto :goto_31

    :cond_26
    const-string p0, "auto"

    .line 144
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 145
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    return-object p0

    .line 154
    :cond_31
    :goto_31
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;
    .registers 6

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_53

    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    .line 94
    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_MODE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 96
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p0

    aget p0, v3, p0

    const/4 v3, 0x2

    if-eq p0, v2, :cond_40

    if-eq p0, v3, :cond_40

    const/4 v4, 0x3

    if-eq p0, v4, :cond_2d

    goto :goto_53

    :cond_2d
    const-string p0, "on"

    .line 106
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_53

    new-array p0, v3, [Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    .line 107
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    aput-object v0, p0, v1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    aput-object v0, p0, v2

    return-object p0

    :cond_40
    const-string p0, "auto"

    .line 100
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_53

    new-array p0, v3, [Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    .line 101
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    aput-object v0, p0, v1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    aput-object v0, p0, v2

    return-object p0

    :cond_53
    :goto_53
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    .line 116
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    aput-object v0, p0, v1

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;
    .registers 2

    .line 19
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;
    .registers 1

    .line 19
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 61
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V

    return-void
.end method

.method public getIconId()I
    .registers 1

    .line 71
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 1

    .line 66
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .registers 1

    .line 76
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->mValue:Ljava/lang/String;

    return-object p0
.end method
