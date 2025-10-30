.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/Event$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraNotAvailableReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

.field public static final enum LAUNCH_RESUME_TIMEOUT:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

.field public static final enum RECORDING_ERROR:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

.field public static final enum SWITCH_RESUME_TIMEOUT:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 96
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    const-string v1, "LAUNCH_RESUME_TIMEOUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;->LAUNCH_RESUME_TIMEOUT:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    .line 97
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    const-string v1, "SWITCH_RESUME_TIMEOUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;->SWITCH_RESUME_TIMEOUT:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    .line 98
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    const-string v1, "RECORDING_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;->RECORDING_ERROR:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    const/4 v0, 0x3

    .line 95
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;->LAUNCH_RESUME_TIMEOUT:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;->SWITCH_RESUME_TIMEOUT:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;->RECORDING_ERROR:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;
    .registers 2

    .line 95
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;
    .registers 1

    .line 95
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    return-object v0
.end method
