.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;
.super Ljava/lang/Enum;
.source "FrontAngle.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

.field public static final enum SUPER_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

.field public static final TAG:Ljava/lang/String; = "FrontAngle"

.field public static final enum WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;


# instance fields
.field private final mValue:F


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    const-string v1, "SUPER_WIDE"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->SUPER_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    const-string v1, "WIDE"

    const/4 v3, 0x1

    const v4, 0x3fc4dd2f    # 1.538f

    invoke-direct {v0, v1, v3, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->SUPER_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->mValue:F

    return-void
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;
    .registers 1

    .line 58
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperWideSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 59
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    .line 61
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;
    .registers 2

    .line 18
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;
    .registers 1

    .line 18
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 39
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)V

    return-void
.end method

.method public getIconId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 44
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 78
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->mValue:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
