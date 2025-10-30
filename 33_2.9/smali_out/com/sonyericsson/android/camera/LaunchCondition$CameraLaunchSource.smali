.class public final enum Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;
.super Ljava/lang/Enum;
.source "LaunchCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/LaunchCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraLaunchSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

.field public static final enum CAMERA_LONG_PRESS:Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

.field public static final enum LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

.field public static final enum LOCKSCREEN:Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

.field public static final enum POWER_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

.field public static final enum WIGGLE:Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 151
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    const-string v1, "WIGGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->WIGGLE:Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    .line 152
    new-instance v1, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    const-string v3, "POWER_DOUBLE_TAP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->POWER_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    .line 153
    new-instance v3, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    const-string v5, "LIFT_TRIGGER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    .line 154
    new-instance v5, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    const-string v7, "LOCKSCREEN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->LOCKSCREEN:Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    .line 155
    new-instance v7, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    const-string v9, "CAMERA_LONG_PRESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->CAMERA_LONG_PRESS:Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 150
    sput-object v9, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->$VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;
    .registers 2

    .line 150
    const-class v0, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;
    .registers 1

    .line 150
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->$VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    return-object v0
.end method
