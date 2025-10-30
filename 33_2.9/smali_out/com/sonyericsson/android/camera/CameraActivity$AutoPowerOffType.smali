.class final enum Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;
.super Ljava/lang/Enum;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AutoPowerOffType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

.field public static final enum DEFAULT:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

.field public static final enum LIFT_TRIGGER:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

.field public static final enum LIFT_TRIGGER_DIALOG:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

.field public static final enum ON_LOCKSCREEN:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;


# instance fields
.field private final mAction:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

.field private final mDuration:I

.field private final mReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 216
    new-instance v6, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    sget-object v5, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->DEFAULT:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const v3, 0x2bf20

    const-string v4, "DEFAULT"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;)V

    sput-object v6, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->DEFAULT:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    .line 217
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    sget-object v12, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->ON_LOCKSCREEN:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    const-string v8, "ON_LOCKSCREEN"

    const/4 v9, 0x1

    const/16 v10, 0x7530

    const-string v11, "ON_LOCKSCREEN"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->ON_LOCKSCREEN:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    .line 218
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    sget-object v18, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->LIFT_TRIGGER:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    const-string v14, "LIFT_TRIGGER"

    const/4 v15, 0x2

    const/16 v16, 0x1388

    const-string v17, "LIFT_TRIGGER"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;)V

    sput-object v1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    .line 219
    new-instance v2, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    sget-object v12, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->LIFT_TRIGGER_DIALOG:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    const-string v8, "LIFT_TRIGGER_DIALOG"

    const/4 v9, 0x3

    const/16 v10, 0x3a98

    const-string v11, "LIFT_TRIGGER_DIALOG"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;)V

    sput-object v2, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER_DIALOG:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    .line 215
    sput-object v3, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->$VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;",
            ")V"
        }
    .end annotation

    .line 226
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 227
    iput p3, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->mDuration:I

    .line 228
    iput-object p4, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->mReason:Ljava/lang/String;

    .line 229
    iput-object p5, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->mAction:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;
    .registers 2

    .line 215
    const-class v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;
    .registers 1

    .line 215
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->$VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->mAction:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    return-object p0
.end method

.method public getDuration()I
    .registers 1

    .line 233
    iget p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->mDuration:I

    return p0
.end method

.method public getReason()Ljava/lang/String;
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->mReason:Ljava/lang/String;

    return-object p0
.end method
