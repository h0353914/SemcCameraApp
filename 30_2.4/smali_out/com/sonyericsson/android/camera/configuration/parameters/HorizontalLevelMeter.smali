.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;
.super Ljava/lang/Enum;
.source "HorizontalLevelMeter.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

.field public static final enum MAIN_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

.field private static final sParameterTextId:I = 0x7f0e023f


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 15
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    const-string v1, "ON"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0e0313

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    .line 18
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    const-string v1, "MAIN_ONLY"

    const/4 v4, 0x1

    const v5, 0x7f0e0269

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->MAIN_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    const-string v1, "OFF"

    const/4 v5, 0x2

    const v6, 0x7f0e0312

    invoke-direct {v0, v1, v5, v3, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    const/4 v0, 0x3

    .line 14
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->MAIN_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->mIconId:I

    .line 43
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->mTextId:I

    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;
    .registers 1

    .line 114
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;
    .registers 1

    .line 100
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;
    .registers 2

    .line 14
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;
    .registers 1

    .line 14
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 53
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;)V

    return-void
.end method

.method public getIconId()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->mIconId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 61
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HORIZONTAL_LEVEL_METER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const v0, 0x7f0e023f

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
