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

.field public static final enum FAILED_TO_OPEN:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

.field public static final enum OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 83
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    const-string v1, "FAILED_TO_OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->FAILED_TO_OPEN:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    .line 84
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    const-string v1, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    const/4 v0, 0x2

    .line 82
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->FAILED_TO_OPEN:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    aput-object v1, v0, v3

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

.method public static getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;
    .registers 1

    if-eqz p0, :cond_5

    .line 88
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->FAILED_TO_OPEN:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    goto :goto_7

    :cond_5
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    :goto_7
    return-object p0
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
