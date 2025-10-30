.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zoomTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

.field public static final enum PINCH:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

.field public static final enum PINCH_IN:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

.field public static final enum PINCH_OUT:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

.field public static final enum SLIDER_BAR:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

.field public static final enum TAP:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

.field public static final enum TAP_ZOOM_FRAME:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

.field public static final enum VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 404
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    const-string v1, "TAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->TAP:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    .line 405
    new-instance v1, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    const-string v3, "TAP_ZOOM_FRAME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->TAP_ZOOM_FRAME:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    .line 406
    new-instance v3, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    const-string v5, "SLIDER_BAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->SLIDER_BAR:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    .line 407
    new-instance v5, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    const-string v7, "PINCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->PINCH:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    .line 408
    new-instance v7, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    const-string v9, "PINCH_IN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->PINCH_IN:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    .line 409
    new-instance v9, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    const-string v11, "PINCH_OUT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->PINCH_OUT:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    .line 410
    new-instance v11, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    const-string v13, "VOLUME_KEY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 403
    sput-object v13, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 403
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;
    .registers 2

    .line 403
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;
    .registers 1

    .line 403
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    return-object v0
.end method
