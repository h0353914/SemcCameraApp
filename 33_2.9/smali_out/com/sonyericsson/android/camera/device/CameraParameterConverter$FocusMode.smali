.class final enum Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;
.super Ljava/lang/Enum;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FocusMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

.field public static final enum CONTINUOUS_PICTURE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

.field public static final enum CONTINUOUS_VIDEO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

.field public static final enum FIXED:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

.field public static final enum INFINITY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

.field public static final enum MANUAL:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;


# instance fields
.field private mApi1Value:Ljava/lang/String;

.field private mApi2Value:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 165
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    const-string v3, "auto"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    .line 166
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    const-string v3, "INFINITY"

    const-string v5, "infinity"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->INFINITY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    .line 167
    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    const-string v5, "FIXED"

    const/4 v6, 0x2

    const-string v7, "fixed"

    invoke-direct {v3, v5, v6, v7, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->FIXED:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    .line 168
    new-instance v5, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    const-string v7, "CONTINUOUS_VIDEO"

    const/4 v8, 0x3

    const-string v9, "continuous-video"

    invoke-direct {v5, v7, v8, v9, v8}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->CONTINUOUS_VIDEO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    .line 170
    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    const-string v9, "CONTINUOUS_PICTURE"

    const/4 v10, 0x4

    const-string v11, "continuous-picture"

    invoke-direct {v7, v9, v10, v11, v10}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->CONTINUOUS_PICTURE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    .line 172
    new-instance v9, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    const-string v11, "MANUAL"

    const/4 v12, 0x5

    const-string v13, "manual"

    invoke-direct {v9, v11, v12, v13, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->MANUAL:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 164
    sput-object v11, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

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

    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 178
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->mApi1Value:Ljava/lang/String;

    .line 179
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->mApi2Value:I

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;)I
    .registers 6

    .line 183
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 184
    iget-object v4, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->mApi1Value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 185
    iget p0, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->mApi2Value:I

    return p0

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;
    .registers 2

    .line 164
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;
    .registers 1

    .line 164
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    return-object v0
.end method
