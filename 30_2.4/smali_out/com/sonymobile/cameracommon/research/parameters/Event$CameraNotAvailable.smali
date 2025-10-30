.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;
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
    name = "CameraNotAvailable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

.field public static final enum ERROR_CAMERA_DEVICE:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

.field public static final enum ERROR_CAMERA_DISABLED:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

.field public static final enum ERROR_CAMERA_IN_USE:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

.field public static final enum ERROR_CAMERA_SERVICE:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

.field public static final enum ERROR_MAX_CAMERAS_IN_USE:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

.field public static final enum ERROR_ON_CAMERA_DISCONNECTION:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

.field public static final enum ERROR_ON_CAPTURE_FAILED:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

.field public static final enum ERROR_ON_CONFIGURE_FAILED:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

.field public static final enum FAILED_TO_OPEN:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

.field public static final enum OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 83
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    const-string v1, "FAILED_TO_OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->FAILED_TO_OPEN:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    .line 84
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    const-string v1, "ERROR_CAMERA_DEVICE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_CAMERA_DEVICE:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    .line 85
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    const-string v1, "ERROR_CAMERA_DISABLED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_CAMERA_DISABLED:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    .line 86
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    const-string v1, "ERROR_CAMERA_IN_USE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_CAMERA_IN_USE:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    .line 87
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    const-string v1, "ERROR_CAMERA_SERVICE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_CAMERA_SERVICE:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    .line 88
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    const-string v1, "ERROR_MAX_CAMERAS_IN_USE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_MAX_CAMERAS_IN_USE:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    .line 89
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    const-string v1, "ERROR_ON_CAMERA_DISCONNECTION"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_ON_CAMERA_DISCONNECTION:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    .line 90
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    const-string v1, "ERROR_ON_CAPTURE_FAILED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_ON_CAPTURE_FAILED:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    .line 91
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    const-string v1, "ERROR_ON_CONFIGURE_FAILED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_ON_CONFIGURE_FAILED:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    .line 92
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    const-string v1, "OTHER"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    const/16 v0, 0xa

    .line 82
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->FAILED_TO_OPEN:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_CAMERA_DEVICE:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_CAMERA_DISABLED:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_CAMERA_IN_USE:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_CAMERA_SERVICE:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_MAX_CAMERAS_IN_USE:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_ON_CAMERA_DISCONNECTION:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_ON_CAPTURE_FAILED:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_ON_CONFIGURE_FAILED:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    aput-object v1, v0, v11

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;
    .registers 2

    .line 82
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;
    .registers 1

    .line 82
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    return-object v0
.end method
