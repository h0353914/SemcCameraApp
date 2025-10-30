.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;
.super Ljava/lang/Enum;
.source "ZoomFrames.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

.field private static final sParameterTextId:I


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    const-string v1, "ON"

    const/4 v2, -0x1

    const/4 v3, 0x0

    const v4, 0x7f0f03b7

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    const-string v1, "OFF"

    const/4 v4, 0x1

    const v5, 0x7f0f03b6

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    .line 29
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ZOOM_ASSIST:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 30
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->sParameterTextId:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->mIconId:I

    .line 47
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->mTextId:I

    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;
    .registers 1

    .line 111
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;
    .registers 3

    const/4 v0, 0x2

    .line 102
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;
    .registers 2

    .line 18
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;
    .registers 1

    .line 18
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 52
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;)V

    return-void
.end method

.method public getIconId()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->mIconId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 57
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ZOOM_ASSIST:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    .line 67
    sget v0, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->sParameterTextId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
