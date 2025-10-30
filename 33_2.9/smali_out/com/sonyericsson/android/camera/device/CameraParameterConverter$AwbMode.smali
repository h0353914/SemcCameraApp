.class public final enum Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;
.super Ljava/lang/Enum;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AwbMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

.field public static final enum CLOUDY_DAYLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

.field public static final enum DAYLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

.field public static final enum FLUORESCENT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

.field public static final enum INCANDESCENT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;


# instance fields
.field private mAwbModeApi1:Ljava/lang/String;

.field private mAwbModeApi2:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    const-string v1, "OFF"

    const/4 v2, 0x0

    const-string v3, "off"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->OFF:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    .line 24
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    const-string v3, "AUTO"

    const/4 v4, 0x1

    const-string v5, "auto"

    invoke-direct {v1, v3, v4, v5, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    .line 25
    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    const-string v5, "INCANDESCENT"

    const/4 v6, 0x2

    const-string v7, "incandescent"

    invoke-direct {v3, v5, v6, v7, v6}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->INCANDESCENT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    .line 27
    new-instance v5, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    const-string v7, "FLUORESCENT"

    const/4 v8, 0x3

    const-string v9, "fluorescent"

    invoke-direct {v5, v7, v8, v9, v8}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->FLUORESCENT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    .line 29
    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    const-string v9, "DAYLIGHT"

    const/4 v10, 0x4

    const-string v11, "daylight"

    const/4 v12, 0x5

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->DAYLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    .line 31
    new-instance v9, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    const-string v11, "CLOUDY_DAYLIGHT"

    const-string v13, "cloudy-daylight"

    const/4 v14, 0x6

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->CLOUDY_DAYLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    new-array v11, v14, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 22
    sput-object v11, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->mAwbModeApi1:Ljava/lang/String;

    .line 39
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->mAwbModeApi2:I

    return-void
.end method

.method public static getApi1Value(I)Ljava/lang/String;
    .registers 6

    .line 43
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 44
    iget v4, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->mAwbModeApi2:I

    if-ne v4, p0, :cond_11

    .line 45
    iget-object p0, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->mAwbModeApi1:Ljava/lang/String;

    return-object p0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getApi2Value(Ljava/lang/String;)I
    .registers 7

    .line 52
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_19

    aget-object v4, v0, v3

    .line 53
    iget-object v5, v4, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->mAwbModeApi1:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 54
    iget p0, v4, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->mAwbModeApi2:I

    return p0

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_19
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;
    .registers 2

    .line 22
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;
    .registers 1

    .line 22
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    return-object v0
.end method
