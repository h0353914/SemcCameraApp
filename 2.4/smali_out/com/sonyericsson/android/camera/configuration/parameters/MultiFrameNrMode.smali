.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;
.super Ljava/lang/Enum;
.source "MultiFrameNrMode.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 24
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

    const-string v1, "OFF"

    const-string v5, "off"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

    const-string v8, "AUTO"

    const-string v12, "auto"

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

    const/4 v0, 0x2

    .line 23
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

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

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->mIconId:I

    .line 52
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->mTextId:I

    .line 53
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;
    .registers 3

    .line 143
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    .line 147
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isMultiFameNrModesSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 148
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

    return-object p0

    .line 150
    :cond_18
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

    return-object p0

    .line 145
    :cond_1b
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;
    .registers 8

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    .line 122
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MULTI_FRAME_NR_MODE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 123
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz p0, :cond_38

    .line 125
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    .line 126
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_24
    if-ge v4, v3, :cond_38

    aget-object v5, v2, v4

    .line 127
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 128
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 133
    :cond_38
    new-array p0, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;
    .registers 2

    .line 23
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;
    .registers 1

    .line 23
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 63
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;)V

    return-void
.end method

.method public getIconId()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->mIconId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 71
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->MULTI_FRAME_NR_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 101
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->mValue:Ljava/lang/String;

    return-object v0
.end method
