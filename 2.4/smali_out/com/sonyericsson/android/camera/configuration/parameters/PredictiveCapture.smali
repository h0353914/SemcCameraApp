.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;
.super Ljava/lang/Enum;
.source "PredictiveCapture.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

.field public static final TAG:Ljava/lang/String; = "PredictiveCapture"

.field private static final sParameterTextId:I = 0x7f0e028f


# instance fields
.field private final mCaptureNum:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 23
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    const-string v1, "AUTO"

    const-string v4, "auto"

    const/4 v2, 0x0

    const v3, 0x7f0e0311

    const/4 v5, 0x4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    const-string v8, "OFF"

    const-string v11, "off"

    const/4 v9, 0x1

    const v10, 0x7f0e0312

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 31
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    const-string v2, "ON"

    const-string v5, "on"

    const/4 v3, 0x2

    const v4, 0x7f0e0313

    const/4 v6, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->mTextId:I

    .line 53
    iput-object p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->mValue:Ljava/lang/String;

    .line 54
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->mCaptureNum:I

    return-void
.end method

.method public static getDefaultValue(ZLcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;
    .registers 2

    .line 78
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    return-object p0
.end method

.method public static getOptions(ZLcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_4d

    .line 59
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, p0, :cond_4d

    .line 61
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 62
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 63
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4d

    .line 64
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 65
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p0, 0x2

    .line 66
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    aput-object p1, p0, v0

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    aput-object p1, p0, v1

    return-object p0

    .line 70
    :cond_46
    new-array p0, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    aput-object p1, p0, v0

    return-object p0

    .line 74
    :cond_4d
    new-array p0, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    aput-object p1, p0, v0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;
    .registers 2

    .line 22
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;
    .registers 1

    .line 22
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 83
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V

    return-void
.end method

.method public getCaptureNum()I
    .registers 2

    .line 122
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->mCaptureNum:I

    return v0
.end method

.method public getIconId()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 88
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const v0, 0x7f0e028f

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->mValue:Ljava/lang/String;

    return-object v0
.end method
