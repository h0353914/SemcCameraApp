.class final enum Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;
.super Ljava/lang/Enum;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FocusArea"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

.field public static final enum CENTER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

.field public static final enum FACE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

.field public static final enum MULTI:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

.field public static final enum USER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;


# instance fields
.field private mApi1Value:Ljava/lang/String;

.field private mApi2Value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 194
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    const-string v1, "CENTER"

    const/4 v2, 0x0

    const-string v3, "center"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->CENTER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    .line 196
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    const-string v3, "FACE"

    const/4 v4, 0x1

    const-string v5, "face"

    const/4 v6, 0x2

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->FACE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    .line 198
    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    const-string v5, "MULTI"

    const-string v7, "multi"

    invoke-direct {v3, v5, v6, v7, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->MULTI:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    .line 200
    new-instance v5, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    const-string v7, "USER"

    const/4 v8, 0x3

    const-string/jumbo v9, "user"

    invoke-direct {v5, v7, v8, v9, v8}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->USER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 193
    sput-object v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

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

    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 207
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->mApi1Value:Ljava/lang/String;

    .line 208
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->mApi2Value:I

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;)I
    .registers 7

    .line 212
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_19

    aget-object v4, v0, v3

    .line 213
    iget-object v5, v4, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->mApi1Value:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 214
    iget p0, v4, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->mApi2Value:I

    return p0

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_19
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;
    .registers 2

    .line 193
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;
    .registers 1

    .line 193
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    return-object v0
.end method
