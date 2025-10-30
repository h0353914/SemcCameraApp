.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Facing;
.super Ljava/lang/Enum;
.source "Facing.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Facing;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

.field public static final enum BACK:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

.field public static final enum FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

.field public static final TAG:Ljava/lang/String; = "Facing"

.field private static sOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing; = null

.field private static final sParameterTextId:I = 0x7f0e00c9


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 16
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    const-string v1, "BACK"

    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v2, 0x0

    const v3, 0x7f0801b4

    const v4, 0x7f0e0087

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;-><init>(Ljava/lang/String;IIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->BACK:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    const-string v8, "FRONT"

    sget-object v12, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v9, 0x1

    const v10, 0x7f0801b4

    const v11, 0x7f0e0089

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;-><init>(Ljava/lang/String;IIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    const/4 v0, 0x2

    .line 15
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->BACK:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    const/4 v0, 0x0

    .line 90
    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->sOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->mIconId:I

    .line 38
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->mTextId:I

    .line 39
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->mValue:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-void
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;
    .registers 4

    .line 93
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->sOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    if-nez v0, :cond_22

    .line 94
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    const/4 v0, 0x2

    .line 95
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->BACK:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    aput-object v3, v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->sOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    goto :goto_22

    .line 97
    :cond_1a
    new-array v0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->BACK:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->sOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    .line 100
    :cond_22
    :goto_22
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->sOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    return-object v0
.end method

.method public static final preload()V
    .registers 0

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Facing;
    .registers 2

    .line 15
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;
    .registers 1

    .line 15
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 53
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Facing;)V

    return-void
.end method

.method public getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->mValue:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object v0
.end method

.method public getIconId()I
    .registers 2

    .line 73
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->mIconId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 58
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FACING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const v0, 0x7f0e00c9

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
