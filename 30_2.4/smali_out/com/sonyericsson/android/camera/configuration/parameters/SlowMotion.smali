.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;
.super Ljava/lang/Enum;
.source "SlowMotion.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

.field public static final enum STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

.field public static final enum SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

.field public static final enum SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

.field public static final TAG:Ljava/lang/String; = "SlowMotion"

.field private static final sParameterTextId:I = 0x7f0e033f


# instance fields
.field private final mDescriptionTextId:I

.field private final mIconId:I

.field private final mTextId:I

.field private final mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 26
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const-string v1, "SUPER_SLOW_MOTION"

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0e0328

    const v5, 0x7f0e0337

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 31
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const-string v9, "SUPER_SLOW_SHOT"

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v10, 0x1

    const/4 v11, -0x1

    const v12, 0x7f0e0326

    const v13, 0x7f0e032c

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 36
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const-string v2, "STANDARD_SLOW_MOTION"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v3, 0x2

    const/4 v4, -0x1

    const v5, 0x7f0e0327

    const v6, 0x7f0e0330

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 41
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const-string v9, "OFF"

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v10, 0x3

    const v12, 0x7f0e0312

    const v13, 0x7f0e0312

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const/4 v0, 0x4

    .line 25
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->mIconId:I

    .line 74
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->mTextId:I

    .line 75
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->mDescriptionTextId:I

    .line 76
    iput-object p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-void
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;
    .registers 2

    .line 167
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_14

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperSlowMotionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 171
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-object p0

    .line 173
    :cond_11
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-object p0

    .line 176
    :cond_14
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;
    .registers 4

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v1, :cond_37

    .line 146
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperSlowMotionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 148
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_1d
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v1

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, v2, v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSpeedVideoSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;I)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 158
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 161
    :cond_37
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    :goto_3c
    const/4 p0, 0x0

    .line 163
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;
    .registers 2

    .line 25
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;
    .registers 1

    .line 25
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 81
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V

    return-void
.end method

.method public getDescriptionText(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 130
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_30

    .line 137
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This value is not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :pswitch_15
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->mDescriptionTextId:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "120"

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 133
    :pswitch_22
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->mDescriptionTextId:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "960"

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_22
        :pswitch_22
        :pswitch_15
    .end packed-switch
.end method

.method public getIconId()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->mIconId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 86
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const v0, 0x7f0e033f

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 116
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 126
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object v0
.end method
