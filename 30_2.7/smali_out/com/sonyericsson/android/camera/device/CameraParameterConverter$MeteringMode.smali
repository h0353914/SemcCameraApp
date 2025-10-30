.class final enum Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;
.super Ljava/lang/Enum;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MeteringMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

.field public static final enum AVERAGE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

.field public static final enum CENTER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

.field public static final enum FACE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

.field public static final enum MULTI:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

.field public static final enum SPOT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

.field public static final enum USER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;


# instance fields
.field private mApi1Value:Ljava/lang/String;

.field private mApi2Value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 246
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    const-string v1, "CENTER"

    const-string v2, "center-weighted"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->CENTER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    .line 248
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    const-string v1, "FACE"

    const-string v2, "face"

    const/4 v5, 0x7

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->FACE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    .line 250
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    const-string v1, "AVERAGE"

    const-string v2, "frame-average"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->AVERAGE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    .line 252
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    const-string v1, "MULTI"

    const-string v2, "multi"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->MULTI:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    .line 254
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    const-string v1, "SPOT"

    const-string v2, "spot"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->SPOT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    .line 256
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    const-string v1, "USER"

    const-string v2, "user"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->USER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    const/4 v0, 0x6

    .line 245
    new-array v0, v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->CENTER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->FACE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->AVERAGE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->MULTI:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->SPOT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->USER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    aput-object v1, v0, v8

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

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

    .line 262
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 263
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->mApi1Value:Ljava/lang/String;

    .line 264
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->mApi2Value:I

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;)I
    .registers 6

    .line 268
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 269
    iget-object v4, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->mApi1Value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 270
    iget p0, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->mApi2Value:I

    return p0

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;
    .registers 2

    .line 245
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;
    .registers 1

    .line 245
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    return-object v0
.end method
