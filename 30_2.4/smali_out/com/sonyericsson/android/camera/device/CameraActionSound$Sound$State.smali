.class final enum Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;
.super Ljava/lang/Enum;
.source "CameraActionSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

.field public static final enum LOADED:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

.field public static final enum LOADING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

.field public static final enum LOADING_PLAY_REQUESTED:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

.field public static final enum NOT_LOADED:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 351
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    const-string v1, "NOT_LOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->NOT_LOADED:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    .line 352
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    const-string v1, "LOADING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->LOADING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    .line 353
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    const-string v1, "LOADING_PLAY_REQUESTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->LOADING_PLAY_REQUESTED:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    .line 354
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    const-string v1, "LOADED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->LOADED:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    const/4 v0, 0x4

    .line 350
    new-array v0, v0, [Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->NOT_LOADED:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->LOADING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->LOADING_PLAY_REQUESTED:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->LOADED:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 350
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;
    .registers 2

    .line 350
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;
    .registers 1

    .line 350
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    return-object v0
.end method
