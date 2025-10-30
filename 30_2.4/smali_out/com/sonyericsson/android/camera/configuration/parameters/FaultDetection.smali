.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;
.super Ljava/lang/Enum;
.source "FaultDetection.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

.field public static final enum SNAPSHOT_AND_PREVIEW:Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

.field public static final enum SNAPSHOT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

.field private static sParameterTextId:I


# instance fields
.field private final mIconId:I

.field private mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 17
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

    const-string v1, "SNAPSHOT_AND_PREVIEW"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0e019e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->SNAPSHOT_AND_PREVIEW:Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

    const-string v1, "SNAPSHOT_ONLY"

    const/4 v4, 0x1

    const v5, 0x7f0e019f

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->SNAPSHOT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

    const-string v1, "OFF"

    const/4 v5, 0x2

    const v6, 0x7f0e0312

    invoke-direct {v0, v1, v5, v3, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

    const/4 v0, 0x3

    .line 16
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->SNAPSHOT_AND_PREVIEW:Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->SNAPSHOT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

    const v0, 0x7f0e0168

    .line 31
    sput v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->sParameterTextId:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->mIconId:I

    .line 51
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->mTextId:I

    return-void
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;
    .registers 1

    .line 60
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFaultPhotoDetectionSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    .line 63
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;
    .registers 2

    .line 16
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;
    .registers 1

    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 74
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;)V

    return-void
.end method

.method public getIconId()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->mIconId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 82
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAULT_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    .line 87
    sget v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->sParameterTextId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 122
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
